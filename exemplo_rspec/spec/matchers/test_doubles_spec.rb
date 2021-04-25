describe "Test Double" do
    it "--" do
        user = double('User')
        allow(user).to receive_messages(name: 'Victor', password: 'secret')
        # allow(user).to receive(:name).and_return('Victor')
        puts user.inspect
        user.name
        user.password
    end
    it "as_null_object" do
        user = double('User').as_null_object
        allow(user).to receive(:name).and_return('Victor')
        allow(user).to receive(:password).and_return('secret')
        puts user.inspect
        user.name
        user.password
        user.abc
    end
end
