class AddCallToMarginCalls < ActiveRecord::Migration[5.2]
  def change
    add_monetize :margin_calls, :call, currency: { present: false }
    add_monetize :margin_calls, :requirement, currency: { present: false }
    add_monetize :margin_calls, :guarantee, currency: { present: false }
  end
end
