def self.read
    where(read: true)
   end
   
def self.unread
    where(read: false)
end
   