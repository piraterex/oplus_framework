.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;
.super Ljava/lang/Object;
.source "FontFamilyUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIndex:I

.field private final blacklist mPostScriptName:Ljava/lang/String;

.field private final blacklist mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)V
    .locals 1
    .param p1, "postScriptName"    # Ljava/lang/String;
    .param p2, "style"    # Landroid/graphics/fonts/FontStyle;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mAxes:Ljava/util/List;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mIndex:I

    .line 179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 181
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mPostScriptName:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;
    .locals 7

    .line 212
    new-instance v6, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;

    iget-object v1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mPostScriptName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mStyle:Landroid/graphics/fonts/FontStyle;

    iget v3, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mIndex:I

    iget-object v4, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mAxes:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest$Font-IA;)V

    return-object v6
.end method

.method public whitelist setAxes(Ljava/util/List;)Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;"
        }
    .end annotation

    .line 191
    .local p1, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "axes"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 193
    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mAxes:Ljava/util/List;

    .line 194
    return-object p0
.end method

.method public whitelist setIndex(I)Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;
    .locals 0
    .param p1, "index"    # I

    .line 203
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 204
    iput p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;->mIndex:I

    .line 205
    return-object p0
.end method
