.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadUriTask"
.end annotation


# instance fields
.field public final blacklist mBmp:Landroid/graphics/Bitmap;

.field public final blacklist mExtraCount:I

.field public final blacklist mImageResourceId:I

.field public final blacklist mUri:Landroid/net/Uri;

.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
    .param p2, "imageResourceId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extraCount"    # I
    .param p5, "bmp"    # Landroid/graphics/Bitmap;

    .line 331
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    .line 333
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mUri:Landroid/net/Uri;

    .line 334
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    .line 335
    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    .line 336
    return-void
.end method
