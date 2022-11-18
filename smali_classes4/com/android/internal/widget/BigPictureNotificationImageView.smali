.class public Lcom/android/internal/widget/BigPictureNotificationImageView;
.super Landroid/widget/ImageView;
.source "BigPictureNotificationImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mMaximumDrawableHeight:I

.field private final blacklist mMaximumDrawableWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/internal/widget/BigPictureNotificationImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 64
    .local v0, "isLowRam":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    if-eqz v0, :cond_0

    const v2, 0x10501e6

    goto :goto_0

    .line 66
    :cond_0
    const v2, 0x10501e5

    .line 64
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    if-eqz v0, :cond_1

    const v2, 0x10501e4

    goto :goto_1

    .line 69
    :cond_1
    const v2, 0x10501e3

    .line 67
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    .line 70
    return-void
.end method

.method private blacklist loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 103
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    return-object v0
.end method

.method private blacklist loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 97
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$setImageIconAsync$1$com-android-internal-widget-BigPictureNotificationImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setImageURIAsync$0$com-android-internal-widget-BigPictureNotificationImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method public blacklist setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
