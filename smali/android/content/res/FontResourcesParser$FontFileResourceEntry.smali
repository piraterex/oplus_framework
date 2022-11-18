.class public final Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# static fields
.field public static final blacklist ITALIC:I = 0x1

.field public static final blacklist RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final blacklist UPRIGHT:I


# instance fields
.field private final greylist-max-o mFileName:Ljava/lang/String;

.field private greylist-max-o mItalic:I

.field private greylist-max-o mResourceId:I

.field private greylist-max-o mTtcIndex:I

.field private greylist-max-o mVariationSettings:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # I
    .param p4, "variationSettings"    # Ljava/lang/String;
    .param p5, "ttcIndex"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    .line 100
    iput p2, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    .line 101
    iput p3, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    .line 102
    iput-object p4, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    .line 103
    iput p5, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mTtcIndex:I

    .line 104
    return-void
.end method


# virtual methods
.method public greylist-max-o getFileName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getItalic()I
    .locals 1

    .line 115
    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    return v0
.end method

.method public greylist-max-o getTtcIndex()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mTtcIndex:I

    return v0
.end method

.method public greylist-max-o getVariationSettings()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getWeight()I
    .locals 1

    .line 111
    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    return v0
.end method
