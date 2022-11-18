.class Lcom/android/internal/app/ResolverActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 2244
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2248
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2249
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2250
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2251
    return-void

    .line 2254
    :cond_0
    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2256
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2257
    return-void

    .line 2260
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 2261
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2262
    return-void

    .line 2265
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 2266
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    goto :goto_0

    .line 2269
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 2272
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2273
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2274
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    goto :goto_1

    .line 2276
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2278
    :goto_1
    return-void
.end method
