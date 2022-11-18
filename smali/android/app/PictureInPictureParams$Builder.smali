.class public Landroid/app/PictureInPictureParams$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAspectRatio:Landroid/util/Rational;

.field private blacklist mAutoEnterEnabled:Ljava/lang/Boolean;

.field private blacklist mCloseAction:Landroid/app/RemoteAction;

.field private blacklist mExpandedAspectRatio:Landroid/util/Rational;

.field private blacklist mIsLaunchIntoPip:Ljava/lang/Boolean;

.field private blacklist mSeamlessResizeEnabled:Ljava/lang/Boolean;

.field private greylist-max-o mSourceRectHint:Landroid/graphics/Rect;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PictureInPictureParams;)V
    .locals 1
    .param p1, "original"    # Landroid/app/PictureInPictureParams;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmAspectRatio(Landroid/app/PictureInPictureParams;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 78
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmUserActions(Landroid/app/PictureInPictureParams;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 79
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmCloseAction(Landroid/app/PictureInPictureParams;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    .line 80
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSourceRectHint(Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 81
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmAutoEnterEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 82
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSeamlessResizeEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 83
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmTitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 84
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmSubtitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 85
    invoke-static {p1}, Landroid/app/PictureInPictureParams;->-$$Nest$fgetmIsLaunchIntoPip(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/PictureInPictureParams;
    .locals 12

    .line 268
    new-instance v11, Landroid/app/PictureInPictureParams;

    iget-object v1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureParams$Builder;->mExpandedAspectRatio:Landroid/util/Rational;

    iget-object v3, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    iget-object v4, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    iget-object v5, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iget-object v7, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iget-object v8, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Landroid/util/Rational;Ljava/util/List;Landroid/app/RemoteAction;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 272
    .local v0, "params":Landroid/app/PictureInPictureParams;
    return-object v0
.end method

.method public whitelist setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/app/PictureInPictureParams$Builder;"
        }
    .end annotation

    .line 131
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 137
    :cond_1
    return-object p0
.end method

.method public whitelist setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .locals 0
    .param p1, "aspectRatio"    # Landroid/util/Rational;

    .line 97
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 98
    return-object p0
.end method

.method public whitelist setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .param p1, "autoEnterEnabled"    # Z

    .line 195
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 196
    return-object p0
.end method

.method public whitelist setCloseAction(Landroid/app/RemoteAction;)Landroid/app/PictureInPictureParams$Builder;
    .locals 0
    .param p1, "action"    # Landroid/app/RemoteAction;

    .line 155
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mCloseAction:Landroid/app/RemoteAction;

    .line 156
    return-object p0
.end method

.method public whitelist setExpandedAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .locals 0
    .param p1, "expandedAspectRatio"    # Landroid/util/Rational;

    .line 115
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mExpandedAspectRatio:Landroid/util/Rational;

    .line 116
    return-object p0
.end method

.method blacklist setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .param p1, "isLaunchIntoPip"    # Z

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 257
    return-object p0
.end method

.method public whitelist setSeamlessResizeEnabled(Z)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .param p1, "seamlessResizeEnabled"    # Z

    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 213
    return-object p0
.end method

.method public whitelist setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .param p1, "launchBounds"    # Landroid/graphics/Rect;

    .line 172
    if-nez p1, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 177
    :goto_0
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams$Builder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 241
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 242
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 225
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 226
    return-object p0
.end method
