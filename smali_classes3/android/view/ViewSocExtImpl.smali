.class public Landroid/view/ViewSocExtImpl;
.super Ljava/lang/Object;
.source "ViewSocExtImpl.java"

# interfaces
.implements Landroid/view/IViewSocExt;


# instance fields
.field private blacklist mView:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewSocExtImpl;->mView:Landroid/view/View;

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewSocExtImpl;->mView:Landroid/view/View;

    .line 11
    return-void
.end method


# virtual methods
.method public whitelist hookCheckAudioMsgView()V
    .locals 0

    .line 15
    return-void
.end method

.method public whitelist hookPerfHint(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 19
    return-void
.end method
