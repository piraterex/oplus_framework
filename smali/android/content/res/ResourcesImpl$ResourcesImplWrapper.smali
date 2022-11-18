.class Landroid/content/res/ResourcesImpl$ResourcesImplWrapper;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"

# interfaces
.implements Landroid/content/res/IResourcesImplWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesImplWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 0

    .line 1675
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ResourcesImplWrapper;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesImpl$ResourcesImplWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/ResourcesImpl$ResourcesImplWrapper;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist getPreloadedColorDrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 1684
    invoke-static {}, Landroid/content/res/ResourcesImpl;->-$$Nest$sfgetsPreloadedColorDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPreloadedComplexColors()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation

    .line 1689
    invoke-static {}, Landroid/content/res/ResourcesImpl;->-$$Nest$sfgetsPreloadedComplexColors()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ResourcesImplWrapper;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method
