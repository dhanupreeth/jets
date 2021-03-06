describe Jets::Cfn::Ship do
  let(:ship) do
    Jets::Cfn::Ship.new(noop: true)
  end

  describe "Cfn::Ship" do
    it "adds functions to resources" do
      expect(ship).to receive(:stack_in_progress?) # stub
      expect(ship).to receive(:save_stack)  # stub
      expect(ship).to receive(:wait_for_stack).and_return(true) # stub
      expect(ship).to receive(:endpoint_available?).twice # stub
      ship.run
    end
  end
end
