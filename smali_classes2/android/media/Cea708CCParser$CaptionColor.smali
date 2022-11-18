.class public Landroid/media/Cea708CCParser$CaptionColor;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionColor"
.end annotation


# static fields
.field private static final greylist-max-o COLOR_MAP:[I

.field public static final greylist-max-o OPACITY_FLASH:I = 0x1

.field private static final greylist-max-o OPACITY_MAP:[I

.field public static final greylist-max-o OPACITY_SOLID:I = 0x0

.field public static final greylist-max-o OPACITY_TRANSLUCENT:I = 0x2

.field public static final greylist-max-o OPACITY_TRANSPARENT:I = 0x3


# instance fields
.field public final greylist-max-o blue:I

.field public final greylist-max-o green:I

.field public final greylist-max-o opacity:I

.field public final greylist-max-o red:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 838
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    .line 839
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xf
        0xf0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xfe
        0x80
        0x0
    .end array-data
.end method

.method public constructor greylist-max-o <init>(IIII)V
    .locals 0
    .param p1, "opacity"    # I
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionColor;->opacity:I

    .line 848
    iput p2, p0, Landroid/media/Cea708CCParser$CaptionColor;->red:I

    .line 849
    iput p3, p0, Landroid/media/Cea708CCParser$CaptionColor;->green:I

    .line 850
    iput p4, p0, Landroid/media/Cea708CCParser$CaptionColor;->blue:I

    .line 851
    return-void
.end method


# virtual methods
.method public greylist-max-o getArgbValue()I
    .locals 5

    .line 854
    sget-object v0, Landroid/media/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    iget v1, p0, Landroid/media/Cea708CCParser$CaptionColor;->opacity:I

    aget v0, v0, v1

    sget-object v1, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    iget v2, p0, Landroid/media/Cea708CCParser$CaptionColor;->red:I

    aget v2, v1, v2

    iget v3, p0, Landroid/media/Cea708CCParser$CaptionColor;->green:I

    aget v3, v1, v3

    iget v4, p0, Landroid/media/Cea708CCParser$CaptionColor;->blue:I

    aget v1, v1, v4

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
