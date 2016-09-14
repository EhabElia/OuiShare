module Admin
  class Admin::TopBannersController < BaseController
    inherit_resources
    singleton_belongs_to :language
    actions :all, except: [:show, :index]

    before_filter :verify_admin

    def create
      build_resource
      @top_banner = DefaultAttributes.new(@top_banner).set([:image1, :image2, :image3, :image4, :image5, :main_image])
      if @top_banner.save
        redirect_to admin_home_path
      else
        redirect_to new_admin_language_top_banner_path(params[:language_id])
      end
    end

    def update
      update! { admin_home_path }
    end

    def destroy
      destroy! { admin_home_path }
    end

    protected
    def permitted_params
      params.permit(top_banner: [:title1, :text1, :title2, :text2, :title3, :text3, :title4, :text4, :title5, :text5, :main_image, :image1, :image2, :image3, :image4, :image5, :link1, :link2, :link3, :link4, :link5, :link_text1, :link_text2, :link_text3, :link_text4, :link_text5, :visible2, :visible3, :visible4, :visible5])
    end

    def resource
      @top_banner ||= TopBanner.find(params[:id])
    end

    def build_resource
      @top_banner = Language.find(params[:language_id]).build_top_banner(permitted_params[:top_banner])
    end
  end
end
