.class public Landroid/view/PendingInsetsController;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PendingInsetsController$HideRequest;,
        Landroid/view/PendingInsetsController$ShowRequest;,
        Landroid/view/PendingInsetsController$PendingRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEEP_BEHAVIOR:I = -0x1


# instance fields
.field private blacklist mAnimationsDisabled:Z

.field private blacklist mAppearance:I

.field private blacklist mAppearanceMask:I

.field private blacklist mBehavior:I

.field private blacklist mCaptionInsetsHeight:I

.field private blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDummyState:Landroid/view/InsetsState;

.field private blacklist mReplayedInsetsController:Landroid/view/InsetsController;

.field private final blacklist mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/PendingInsetsController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 42
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/PendingInsetsController;->mCaptionInsetsHeight:I

    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 134
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 140
    :goto_0
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 7
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 205
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 206
    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    goto :goto_0

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 211
    :goto_0
    return-void
.end method

.method public blacklist detach()V
    .locals 1

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    .line 198
    return-void
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mDummyState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsAppearance()I

    move-result v0

    return v0

    .line 81
    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .locals 2

    .line 100
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/view/InsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0

    .line 103
    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_1
    return v0
.end method

.method public whitelist hide(I)V
    .locals 2
    .param p1, "types"    # I

    .line 59
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->hide(I)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$HideRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$HideRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    return-void
.end method

.method public blacklist isRequestedVisible(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 128
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 145
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    :goto_0
    return-void
.end method

.method public blacklist replayAndAttach(Landroid/view/InsetsController;)V
    .locals 4
    .param p1, "controller"    # Landroid/view/InsetsController;

    .line 158
    iget v0, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    .line 161
    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    if-eqz v0, :cond_1

    .line 162
    iget v2, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    invoke-virtual {p1, v2, v0}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    .line 164
    :cond_1
    iget v0, p0, Landroid/view/PendingInsetsController;->mCaptionInsetsHeight:I

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setCaptionInsetsHeight(I)V

    .line 167
    :cond_2
    iget-boolean v0, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_3

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    .line 170
    :cond_3
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 171
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 172
    iget-object v3, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PendingInsetsController$PendingRequest;

    invoke-interface {v3, p1}, Landroid/view/PendingInsetsController$PendingRequest;->replay(Landroid/view/InsetsController;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 176
    iget-object v3, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 176
    invoke-virtual {p1, v3}, Landroid/view/InsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v2    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v2, p0, Landroid/view/PendingInsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 183
    iput v1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 184
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    .line 185
    iput v1, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    .line 186
    iput-boolean v1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    .line 189
    iput-object p1, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    .line 190
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 111
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setAnimationsDisabled(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iput-boolean p1, p0, Landroid/view/PendingInsetsController;->mAnimationsDisabled:Z

    .line 116
    :goto_0
    return-void
.end method

.method public blacklist setCaptionInsetsHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 86
    iput p1, p0, Landroid/view/PendingInsetsController;->mCaptionInsetsHeight:I

    .line 87
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .locals 2
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 68
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearance:I

    .line 72
    iget v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/view/PendingInsetsController;->mAppearanceMask:I

    .line 74
    :goto_0
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .locals 1
    .param p1, "behavior"    # I

    .line 91
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->setSystemBarsBehavior(I)V

    goto :goto_0

    .line 94
    :cond_0
    iput p1, p0, Landroid/view/PendingInsetsController;->mBehavior:I

    .line 96
    :goto_0
    return-void
.end method

.method public whitelist show(I)V
    .locals 2
    .param p1, "types"    # I

    .line 50
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mReplayedInsetsController:Landroid/view/InsetsController;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->show(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/view/PendingInsetsController;->mRequests:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/PendingInsetsController$ShowRequest;

    invoke-direct {v1, p1}, Landroid/view/PendingInsetsController$ShowRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :goto_0
    return-void
.end method
