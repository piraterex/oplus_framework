.class public Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProfileDescriptor"
.end annotation


# instance fields
.field private final blacklist mEmptyStateView:Landroid/view/ViewGroup;

.field final blacklist rootView:Landroid/view/ViewGroup;

.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "rootView"    # Landroid/view/ViewGroup;

    .line 615
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    .line 617
    const v0, 0x1020467

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->mEmptyStateView:Landroid/view/ViewGroup;

    .line 618
    return-void
.end method


# virtual methods
.method protected blacklist getEmptyStateView()Landroid/view/ViewGroup;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->mEmptyStateView:Landroid/view/ViewGroup;

    return-object v0
.end method
