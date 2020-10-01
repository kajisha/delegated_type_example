require 'rails_helper'

RSpec.describe Accountability, type: :model do
  describe '会社と事業部の関係について' do
    let(:esminc) { create(:company, name: '永和システムマネジメント') }
    let(:company) { create(:party, partyable: esminc) }
    let(:agile_dept) { create(:department, name: 'アジャイル事業部') }
    let(:department) { create(:party, partyable: agile_dept) }

    before do
      create(:accountability, accountability_type: :organization_structure, commissioner: department, responsible: company)
    end

    it '永和システムマネジメントにはアジャイル事業部がある' do
      expect(esminc.departments).to eq [agile_dept]
    end
  end

  describe '事業部と社員の関係について' do
    let(:agile_dept) { create(:department, name: 'アジャイル事業部') }
    let(:department) { create(:party, partyable: agile_dept) }
    let(:wat_aro) { create(:employee, name: 'wat-aro', email: 'wat-aro@example.com') }
    let(:employee) { create(:party, partyable: wat_aro) }

    before do
      create(:accountability, accountability_type: :belong, commissioner: employee, responsible: department)
    end

    it 'アジャイル事業部にわたろーが所属している' do
      expect(agile_dept.employees).to eq [wat_aro]
    end
  end
end
