.class public final enum Landroid/graphics/BlurMaskFilter$Blur;
.super Ljava/lang/Enum;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BlurMaskFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Blur"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlurMaskFilter$Blur;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist INNER:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist OUTER:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist SOLID:Landroid/graphics/BlurMaskFilter$Blur;


# instance fields
.field final greylist-max-o native_int:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 36
    new-instance v1, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v3, "SOLID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    .line 41
    new-instance v3, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v5, "OUTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 46
    new-instance v5, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v7, "INNER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 27
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/BlurMaskFilter$Blur;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/graphics/BlurMaskFilter$Blur;->$VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    .line 50
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/BlurMaskFilter$Blur;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Landroid/graphics/BlurMaskFilter$Blur;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlurMaskFilter$Blur;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/BlurMaskFilter$Blur;
    .locals 1

    .line 27
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->$VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

    invoke-virtual {v0}, [Landroid/graphics/BlurMaskFilter$Blur;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlurMaskFilter$Blur;

    return-object v0
.end method
