.class public interface abstract Landroid/app/IApplicationPackageManagerWrapper;
.super Ljava/lang/Object;
.source "IApplicationPackageManagerWrapper.java"


# virtual methods
.method public blacklist getCachedIcon(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist newResourceName(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public blacklist putCachedIcon(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/Object;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method
