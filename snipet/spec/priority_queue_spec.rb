# frozen_string_literal: true

require 'rspec'
require_relative '../priority_queue'

RSpec.describe 'PriorityQueue' do
  context 'direction is max' do
    it 'enqueue element' do
      pq = PriorityQueue.new(:max, [])

      pq.enqueue(3)
      pq.enqueue(9)
      pq.enqueue(6)
      pq.enqueue(1)

      expect(pq.heap.nodes).to eq([9, 3, 6, 1])
    end

    it 'dequeue element' do
      pq = PriorityQueue.new(:max, [9, 3, 6, 1])

      expect(pq.dequeue).to eq(9)
      expect(pq.heap.nodes).to eq([6, 3, 1])
    end
  end

  context 'direction is min' do
    it 'enqueue element' do
      pq = PriorityQueue.new(:min, [])

      pq.enqueue(3)
      pq.enqueue(9)
      pq.enqueue(6)
      pq.enqueue(1)

      expect(pq.heap.nodes).to eq([1, 3, 6, 9])
    end

    it 'dequeue element' do
      pq = PriorityQueue.new(:min, [1, 3, 6, 9])

      expect(pq.dequeue).to eq(1)
      expect(pq.heap.nodes).to eq([3, 9, 6])
    end
  end
end
