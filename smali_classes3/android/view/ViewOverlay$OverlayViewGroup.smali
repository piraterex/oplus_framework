.class Landroid/view/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# instance fields
.field greylist-max-o mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mHostView:Landroid/view/View;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .line 140
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 141
    iput-object p2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    .line 142
    iget-object v0, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 144
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    .line 147
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    iget v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 148
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 151
    if-eqz p1, :cond_2

    .line 154
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 161
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 163
    :cond_1
    return-void

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o add(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 182
    if-eqz p1, :cond_3

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 188
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 193
    .local v2, "parentLocation":[I
    new-array v1, v1, [I

    .line 194
    .local v1, "hostViewLocation":[I
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 195
    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    const/4 v3, 0x0

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 197
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 199
    .end local v1    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 206
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 209
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    return-void

    .line 183
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o clear()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    .line 222
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 224
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    :cond_1
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 255
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 258
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 259
    .local v0, "numDrawables":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 260
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist invalidate()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 297
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 300
    :cond_0
    return-void
.end method

.method public whitelist invalidate(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 289
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 292
    :cond_0
    return-void
.end method

.method public whitelist invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 280
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 281
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 284
    :cond_0
    return-void
.end method

.method public greylist-max-o invalidate(Z)V
    .locals 1
    .param p1, "invalidateCache"    # Z

    .line 305
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 306
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 355
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 357
    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 358
    aput v0, p1, v0

    .line 359
    aput v0, p1, v2

    .line 360
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 361
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 366
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 240
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 241
    return-void
.end method

.method protected greylist-max-o invalidateParentCaches()V
    .locals 1

    .line 321
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentCaches()V

    .line 322
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    .line 325
    :cond_0
    return-void
.end method

.method protected greylist-max-o invalidateParentIfNeeded()V
    .locals 1

    .line 329
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentIfNeeded()V

    .line 330
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 333
    :cond_0
    return-void
.end method

.method greylist-max-o invalidateViewProperty(ZZ)V
    .locals 1
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .line 313
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 314
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 317
    :cond_0
    return-void
.end method

.method greylist-max-o isEmpty()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 337
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 338
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 340
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 344
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate()V

    .line 351
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 267
    return-void
.end method

.method public greylist-max-o remove(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 166
    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 174
    :cond_0
    return-void

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o remove(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 213
    if-eqz p1, :cond_0

    .line 217
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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
