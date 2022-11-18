.class Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;
.super Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 147
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fgetmOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fgetmOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;->onProfilePageStateChanged(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public blacklist onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fputmCurrentPage(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fgetmLoadedPages(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    .line 153
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fgetmLoadedPages(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fgetmOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$2;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fgetmOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;->onProfileSelected(I)V

    .line 158
    :cond_1
    return-void
.end method
