.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 342
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 353
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    .line 354
    .local v0, "task":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    .line 356
    .local v1, "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 357
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 359
    return-void

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V

    .line 363
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setAlpha(F)V

    .line 365
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 369
    .local v2, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 373
    iget v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    if-lez v3, :cond_2

    .line 374
    iget v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setExtraImageCount(I)V

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$msetupPreDrawForSharedElementTransition(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V

    .line 380
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/app/IResolverActivityExt;->setCornerRadius(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;)V

    goto :goto_0

    .line 347
    .end local v0    # "task":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    .end local v1    # "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 348
    nop

    .line 383
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
