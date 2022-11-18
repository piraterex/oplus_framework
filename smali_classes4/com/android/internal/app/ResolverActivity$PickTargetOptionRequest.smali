.class Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
.super Landroid/app/VoiceInteractor$PickOptionRequest;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickTargetOptionRequest"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2410
    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 2411
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 2

    .line 2415
    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    .line 2416
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 2417
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_0

    .line 2418
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V

    .line 2419
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2421
    :cond_0
    return-void
.end method

.method public whitelist onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 2425
    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 2426
    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2429
    return-void

    .line 2432
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 2433
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_1

    .line 2434
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, p2, v2

    .line 2435
    invoke-virtual {v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 2436
    .local v1, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2437
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V

    .line 2438
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2441
    .end local v1    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_1
    return-void
.end method
