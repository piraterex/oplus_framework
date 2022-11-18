.class Landroid/app/Notification$BuilderRemoteViews;
.super Landroid/widget/RemoteViews;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderRemoteViews"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .line 12402
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 12403
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 12398
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 12399
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/app/Notification$BuilderRemoteViews;
    .locals 2

    .line 12407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12408
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification$BuilderRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12409
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 12410
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    invoke-direct {v1, v0}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 12411
    .local v1, "brv":Landroid/app/Notification$BuilderRemoteViews;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12412
    return-object v1
.end method

.method public bridge synthetic whitelist clone()Landroid/widget/RemoteViews;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Landroid/app/Notification$BuilderRemoteViews;->clone()Landroid/app/Notification$BuilderRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12396
    invoke-virtual {p0}, Landroid/app/Notification$BuilderRemoteViews;->clone()Landroid/app/Notification$BuilderRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist shouldUseStaticFilter()Z
    .locals 1

    .line 12422
    const/4 v0, 0x1

    return v0
.end method
