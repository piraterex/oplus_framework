.class Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field final synthetic blacklist val$userManager:Landroid/os/UserManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 86
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    iput-object p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->val$userManager:Landroid/os/UserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$requestQuietModeEnabled$0(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V
    .locals 0
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "enabled"    # Z
    .param p2, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public blacklist hasCrossProfileIntents(Ljava/util/List;II)Z
    .locals 1
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;II)Z"
        }
    .end annotation

    .line 90
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 91
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$mhasCrossProfileIntents(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Ljava/util/List;II)Z

    move-result v0

    .line 90
    return v0
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 96
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->val$userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist requestQuietModeEnabled(ZLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 101
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->val$userManager:Landroid/os/UserManager;

    new-instance v2, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fputmIsWaitingToEnableWorkProfile(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Z)V

    .line 105
    return-void
.end method
