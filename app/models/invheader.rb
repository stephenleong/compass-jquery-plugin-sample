class Invheader < ActiveRecord::Base
  belongs_to :client
  has_many :invlines
  gridify :demo0102,
    :title          => I18n.t('txt.jqgrid.demo.20json_data'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    #:build_model    => false,
    :colInclude     => [:client],
    :colNames       => [
                        I18n.t('activerecord.attributes.invheader.id'),
                        I18n.t('activerecord.attributes.invheader.invdate'),
                        I18n.t('activerecord.attributes.invheader.client'),
                        I18n.t('activerecord.attributes.invheader.amount'),
                        I18n.t('activerecord.attributes.invheader.tax'),
                        I18n.t('activerecord.attributes.invheader.total'),
                        I18n.t('activerecord.attributes.invheader.note'),
                        I18n.t('activerecord.attributes.invheader.closed'),
                        I18n.t('activerecord.attributes.invheader.ship_via')
                       ],
    :colModel       => {
                         :id       => { :name  => 'id',
                                        :width =>  50,
                                        :align => :right  },
                         :invdate  => { :name  => 'invdate',
                                        :width =>  90 },
                         :client_id => { :name  => 'client.name',
                                         :width => 100 },
                         :amount   => { :name  => 'amount',
                                        :width =>  80,
                                        :align => :right },
                         :tax      => { :name  => 'tax',
                                        :width =>  80,
                                        :align => :right },
                         :total    => { :name  => 'total',
                                        :width =>  80,
                                        :align => :right },
                         :note     => { :name     => 'note',
                                        :width    => 150,
                                        :sortable => false },
                         :closed   => { :name  => 'closed',
                                        :width =>  40 },
                         :ship_via => { :name  => 'ship_via',
                                        :width =>  40 }
                       },
    :height         => :auto,
    :jqgrid_options => { :viewsortcols => [true, :horizontal,false] },
    :search_button  => true,
    :refresh_button => true,
    :pager          => true

end
