.class final Landroid/app/ActivityManager$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidObserver"
.end annotation


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-o mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "clientContext"    # Landroid/content/Context;

    .line 199
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 200
    iput-object p1, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 201
    iput-object p2, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method


# virtual methods
.method public greylist-max-o onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 217
    return-void
.end method

.method public greylist-max-o onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 224
    return-void
.end method

.method public greylist-max-o onUidGone(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 212
    iget-object v0, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 213
    return-void
.end method

.method public greylist-max-o onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 221
    return-void
.end method

.method public blacklist onUidProcAdjChanged(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 227
    return-void
.end method

.method public blacklist onUidStateChanged(IIJI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 206
    iget-object v0, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object v1, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 208
    return-void
.end method
