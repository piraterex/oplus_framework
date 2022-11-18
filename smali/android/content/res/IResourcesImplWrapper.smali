.class public interface abstract Landroid/content/res/IResourcesImplWrapper;
.super Ljava/lang/Object;
.source "IResourcesImplWrapper.java"


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

    .line 15
    const/4 v0, 0x0

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

    .line 19
    const/4 v0, 0x0

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

    .line 11
    const/4 v0, 0x0

    return-object v0
.end method
