.class public Landroid/text/method/HideReturnsTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "HideReturnsTransformationMethod.java"


# static fields
.field private static greylist-max-o ORIGINAL:[C

.field private static greylist-max-o REPLACEMENT:[C

.field private static greylist-max-p sInstance:Landroid/text/method/HideReturnsTransformationMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 29
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    .line 30
    new-array v0, v0, [C

    const v1, 0xfeff

    aput-char v1, v0, v3

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .locals 1

    .line 47
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    .line 51
    return-object v0
.end method


# virtual methods
.method protected whitelist getOriginal()[C
    .locals 1

    .line 36
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method protected whitelist getReplacement()[C
    .locals 1

    .line 43
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
