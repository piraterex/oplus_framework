.class Landroid/graphics/drawable/AnimatedImageDrawable$State;
.super Ljava/lang/Object;
.source "AnimatedImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedImageDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private final greylist-max-o mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field greylist-max-o mAutoMirrored:Z

.field private final greylist-max-o mInputStream:Ljava/io/InputStream;

.field final greylist-max-o mNativePtr:J

.field greylist-max-o mRepeatCount:I

.field greylist-max-o mThemeAttrs:[I

.field final synthetic blacklist this$0:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p2, "nativePtr"    # J
    .param p4, "is"    # Ljava/io/InputStream;
    .param p5, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .line 81
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->this$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    .line 94
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 95
    const/4 p1, -0x2

    iput p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 82
    iput-wide p2, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    .line 83
    iput-object p4, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mInputStream:Ljava/io/InputStream;

    .line 84
    iput-object p5, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 85
    return-void
.end method
