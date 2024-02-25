# frozen_string_literal: true

require 'spec_helper'

describe 'nsswitch' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      it { is_expected.to compile.with_all_deps }

      context 'every parameter will accept type of STRING' do
        let(:params) do
          {
            aliases: 'foo',
            automount: 'foo',
            bootparams: 'foo',
            ethers: 'foo',
            group: 'foo',
            hosts: 'foo',
            netgroup: 'foo',
            netmasks: 'foo',
            networks: 'foo',
            passwd: 'foo',
            protocols: 'foo',
            publickey: 'foo',
            rpc: 'foo',
            services: 'foo',
            shadow: 'foo',
            sudoers: 'foo',
          }
        end

        it { is_expected.to compile }
      end

      context 'every parameter will accept type of ARRAY' do
        let(:params) do
          {
            aliases: ['foo'],
            automount: ['foo'],
            bootparams: ['foo'],
            ethers: ['foo'],
            group: ['foo'],
            hosts: ['foo'],
            netgroup: ['foo'],
            netmasks: ['foo'],
            networks: ['foo'],
            passwd: ['foo'],
            protocols: ['foo'],
            publickey: ['foo'],
            rpc: ['foo'],
            services: ['foo'],
            shadow: ['foo'],
            sudoers: ['foo'],
          }
        end

        it { is_expected.to compile }
      end
    end
  end
end
