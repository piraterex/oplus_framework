.class public interface abstract Lcom/android/internal/app/IResolverActivityExt;
.super Ljava/lang/Object;
.source "IResolverActivityExt.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/app/IResolverActivityExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/internal/app/IResolverActivityExt$1;

    invoke-direct {v0}, Lcom/android/internal/app/IResolverActivityExt$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/IResolverActivityExt;->DEFAULT:Lcom/android/internal/app/IResolverActivityExt;

    return-void
.end method


# virtual methods
.method public blacklist adaptFontSize(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 221
    return-void
.end method

.method public blacklist addExtraOneAppFinish()Z
    .locals 1

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    .line 143
    return-void
.end method

.method public blacklist cacheCustomInfo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public blacklist checkOpShare()V
    .locals 0

    .line 153
    return-void
.end method

.method public blacklist clearInactiveProfileCache(I)V
    .locals 0
    .param p1, "page"    # I

    .line 218
    return-void
.end method

.method public blacklist createTypeNormalView(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetWidth"    # I

    .line 159
    return-object p1
.end method

.method public blacklist displayTextAddActionButton(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "actionRow"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 134
    return-void
.end method

.method public blacklist getChooserActionRowId()I
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChooserPreFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileCount"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayFileContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayImageContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFileSharedDisabled()Z
    .locals 1

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLaunchedFromUid()I
    .locals 1

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public blacklist getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 1

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolverActivity()Lcom/android/internal/app/ResolverActivity;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 170
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getWorkProfileUserHandle(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 174
    return-void
.end method

.method public blacklist getclipData(Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasCustomFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookFinish()V
    .locals 0

    .line 45
    return-void
.end method

.method public blacklist hookconfigureContentView(ZZI)V
    .locals 0
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z
    .param p3, "layoutId"    # I

    .line 85
    return-void
.end method

.method public blacklist hookdisplayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookgetNearbySharingComponent()Z
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookmaybeHideContentPreview()V
    .locals 0

    .line 204
    return-void
.end method

.method public blacklist hookonConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 63
    return-void
.end method

.method public blacklist hookonCopyButtonClicked(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 192
    .local p1, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public blacklist hookonDestroy()V
    .locals 0

    .line 48
    return-void
.end method

.method public blacklist hookonListRebuilt()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 60
    return-void
.end method

.method public blacklist hookonPause()V
    .locals 0

    .line 42
    return-void
.end method

.method public blacklist hookonRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "tabKey"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonResume()V
    .locals 0

    .line 39
    return-void
.end method

.method public blacklist hookonSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "tabKey"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookprepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 207
    return-void
.end method

.method public blacklist hooksetLastChosen(Lcom/android/internal/app/ResolverListController;Landroid/content/Intent;Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "controller"    # Lcom/android/internal/app/ResolverListController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "bestMatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initActionSend()V
    .locals 0

    .line 94
    return-void
.end method

.method public blacklist initPreferenceAndPinList()Z
    .locals 1

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist initView(ZZ)V
    .locals 0
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 88
    return-void
.end method

.method public blacklist isOpShareUi()Z
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOriginUi()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist performAnimation()V
    .locals 0

    .line 108
    return-void
.end method

.method public blacklist restoreProfilePager(I)V
    .locals 0
    .param p1, "pageNumber"    # I

    .line 127
    return-void
.end method

.method public blacklist setActionButtonTextColor(Landroid/widget/Button;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;

    .line 150
    return-void
.end method

.method public blacklist setChooserHeadBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "elevatedView"    # Landroid/view/View;

    .line 156
    return-void
.end method

.method public blacklist setChooserPreFileSingleIconView(ILandroid/widget/ImageView;ZLandroid/widget/TextView;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "fileIconView"    # Landroid/widget/ImageView;
    .param p3, "needTry"    # Z
    .param p4, "fileNameView"    # Landroid/widget/TextView;
    .param p5, "singleFile"    # Z
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;

    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void
.end method

.method public blacklist setCornerRadius(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    .line 140
    return-void
.end method

.method public blacklist setCustomRoundImage(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "roundRectPaint"    # Landroid/graphics/Paint;
    .param p2, "textPaint"    # Landroid/graphics/Paint;
    .param p3, "overlayPaint"    # Landroid/graphics/Paint;

    .line 137
    return-void
.end method

.method public blacklist setMultiProfilePagerAdapter(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .locals 0
    .param p1, "abstractMultiProfilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 29
    return-void
.end method

.method public blacklist setOriginTheme(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 69
    return-void
.end method

.method public blacklist setTextOptionColor(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method public blacklist startSelected(IZZ)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 177
    return-void
.end method

.method public blacklist statisticsData(Landroid/content/pm/ResolveInfo;I)V
    .locals 0
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "which"    # I

    .line 97
    return-void
.end method

.method public blacklist tryApkResourceName(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateView(ZZ)V
    .locals 0
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 91
    return-void
.end method
