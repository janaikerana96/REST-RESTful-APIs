class Contact < ApplicationRecord
  belongs_to  :kind, optional: true
  def author
    'Janai Kerana'
  end

  def as_json(_options = {})
    super(
      methods: :author,
      root: true,
      include: { kind: { only: :descripton } }
    )
  end
end
