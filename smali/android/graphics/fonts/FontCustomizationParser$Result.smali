.class public Landroid/graphics/fonts/FontCustomizationParser$Result;
.super Ljava/lang/Object;
.source "FontCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontCustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final blacklist mAdditionalAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAdditionalNamedFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "additionalNamedFamilies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/FontConfig$FontFamily;>;"
    .local p2, "additionalAliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    .line 60
    iput-object p2, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist getAdditionalAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAdditionalNamedFamilies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    return-object v0
.end method
