.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;
.super Ljava/lang/Object;
.source "FontFamilyUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamilyUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIndex:I

.field private final blacklist mPostScriptName:Ljava/lang/String;

.field private final blacklist mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;)V
    .locals 0
    .param p1, "postScriptName"    # Ljava/lang/String;
    .param p2, "style"    # Landroid/graphics/fonts/FontStyle;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontStyle;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p4, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 245
    iput p3, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mIndex:I

    .line 246
    iput-object p4, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mAxes:Ljava/util/List;

    .line 247
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest$Font-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getAxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mAxes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getIndex()I
    .locals 1

    .line 278
    iget v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mIndex:I

    return v0
.end method

.method public whitelist getPostScriptName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStyle()Landroid/graphics/fonts/FontStyle;
    .locals 1

    .line 262
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    return-object v0
.end method
