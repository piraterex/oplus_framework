.class public interface abstract Lcom/android/internal/app/IAbstractMultiProfilePagerAdapterExt;
.super Ljava/lang/Object;
.source "IAbstractMultiProfilePagerAdapterExt.java"


# virtual methods
.method public blacklist hookResetViewVisibilitiesForConsumerUserEmptyState(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 31
    return-void
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    return-void
.end method

.method public blacklist isOriginUi()Z
    .locals 1

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist showActiveEmptyViewState()V
    .locals 0

    .line 13
    return-void
.end method

.method public blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0
    .param p1, "profilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 23
    return-void
.end method

.method public blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0
    .param p1, "profilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 28
    return-void
.end method

.method public blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "profilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method
