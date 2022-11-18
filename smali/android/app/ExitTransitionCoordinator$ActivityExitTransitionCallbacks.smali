.class public Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExitTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityExitTransitionCallbacks"
.end annotation


# instance fields
.field final blacklist mActivity:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    .line 554
    return-void
.end method


# virtual methods
.method public blacklist isReturnTransitionAllowed()Z
    .locals 1

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onFinish()V
    .locals 2

    .line 563
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    .line 564
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 565
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 566
    return-void
.end method
