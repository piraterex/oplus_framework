.class Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$AbstractMultiProfilePagerAdapterWrapper;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"

# interfaces
.implements Lcom/android/internal/app/IAbstractMultiProfilePagerAdapterWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbstractMultiProfilePagerAdapterWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$AbstractMultiProfilePagerAdapterWrapper;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$AbstractMultiProfilePagerAdapterWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$AbstractMultiProfilePagerAdapterWrapper;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V

    return-void
.end method


# virtual methods
.method public blacklist setCurrentPage(I)V
    .locals 1
    .param p1, "position"    # I

    .line 689
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$AbstractMultiProfilePagerAdapterWrapper;->this$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->-$$Nest$fputmCurrentPage(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;I)V

    .line 690
    return-void
.end method
