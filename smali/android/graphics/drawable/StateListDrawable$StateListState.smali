.class Landroid/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field greylist-max-o mStateSets:[[I

.field greylist-max-o mThemeAttrs:[I


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 324
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 326
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 329
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 332
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 334
    :goto_0
    return-void
.end method


# virtual methods
.method greylist addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 348
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 349
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 350
    return v0
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .line 385
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 386
    new-array v0, p2, [[I

    .line 387
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 389
    return-void
.end method

.method greylist-max-o hasFocusStateSpecified()Z
    .locals 2

    .line 365
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method greylist-max-o indexOfStateSet([I)I
    .locals 4
    .param p1, "stateSet"    # [I

    .line 354
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 355
    .local v0, "stateSets":[[I
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v1

    .line 356
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 357
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    return v2

    .line 356
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method greylist-max-o mutate()V
    .locals 4

    .line 337
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 339
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v0

    new-array v2, v2, [[I

    .line 340
    .local v2, "stateSets":[[I
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 341
    iget-object v3, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    aput-object v3, v2, v0

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 343
    .end local v0    # "i":I
    :cond_2
    iput-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 344
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 370
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 375
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable-IA;)V

    return-object v0
.end method
