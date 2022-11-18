.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest;
.super Ljava/lang/Object;
.source "FontFamilyUpdateRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;,
        Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;,
        Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;
    }
.end annotation


# instance fields
.field private final blacklist mFontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFontFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFileUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFileUpdateRequest;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p1, "fontFiles":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFileUpdateRequest;>;"
    .local p2, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest;->mFontFiles:Ljava/util/List;

    .line 343
    iput-object p2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest;->mFontFamilies:Ljava/util/List;

    .line 344
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/fonts/FontFamilyUpdateRequest;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getFontFamilies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest;->mFontFamilies:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFontFileUpdateRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFileUpdateRequest;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest;->mFontFiles:Ljava/util/List;

    return-object v0
.end method
