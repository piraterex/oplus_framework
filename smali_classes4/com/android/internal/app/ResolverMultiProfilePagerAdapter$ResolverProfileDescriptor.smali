.class Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.source "ResolverMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverProfileDescriptor"
.end annotation


# instance fields
.field final blacklist listView:Landroid/widget/ListView;

.field private blacklist resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .param p2, "rootView"    # Landroid/view/ViewGroup;
    .param p3, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 285
    iput-object p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->this$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/view/ViewGroup;)V

    .line 287
    iput-object p3, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    .line 288
    const v0, 0x102046e

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    .line 289
    return-void
.end method
