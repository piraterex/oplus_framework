.class public interface abstract Landroid/graphics/ITypefaceExt;
.super Ljava/lang/Object;
.source "ITypefaceExt.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/graphics/ITypefaceExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Landroid/graphics/ITypefaceExt$1;

    invoke-direct {v0}, Landroid/graphics/ITypefaceExt$1;-><init>()V

    sput-object v0, Landroid/graphics/ITypefaceExt;->DEFAULT:Landroid/graphics/ITypefaceExt;

    return-void
.end method


# virtual methods
.method public whitelist createIndividualTypefae()V
    .locals 0

    .line 41
    return-void
.end method

.method public whitelist createTypefaceForCustom(Ljava/util/Map;Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;)Z"
        }
    .end annotation

    .line 44
    .local p1, "outSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 9
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getDefault()Landroid/graphics/ITypefaceExt;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/graphics/ITypefaceExt;
    .locals 1

    .line 21
    sget-object v0, Landroid/graphics/ITypefaceExt;->DEFAULT:Landroid/graphics/ITypefaceExt;

    return-object v0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 16
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->ITypefaceExt:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist initFontsForserializeFontMap()V
    .locals 0

    .line 34
    return-void
.end method

.method public whitelist isSystemTypeface()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setSystemTypeface(Z)V
    .locals 0
    .param p1, "isSystemFont"    # Z

    .line 26
    return-void
.end method
