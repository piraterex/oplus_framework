.class public final enum Landroid/graphics/Interpolator$Result;
.super Ljava/lang/Enum;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Interpolator$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Interpolator$Result;

.field public static final enum whitelist FREEZE_END:Landroid/graphics/Interpolator$Result;

.field public static final enum whitelist FREEZE_START:Landroid/graphics/Interpolator$Result;

.field public static final enum whitelist NORMAL:Landroid/graphics/Interpolator$Result;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 112
    new-instance v0, Landroid/graphics/Interpolator$Result;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    .line 113
    new-instance v1, Landroid/graphics/Interpolator$Result;

    const-string v3, "FREEZE_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    .line 114
    new-instance v3, Landroid/graphics/Interpolator$Result;

    const-string v5, "FREEZE_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/graphics/Interpolator$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    .line 111
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Interpolator$Result;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/graphics/Interpolator$Result;->$VALUES:[Landroid/graphics/Interpolator$Result;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Interpolator$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 111
    const-class v0, Landroid/graphics/Interpolator$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Interpolator$Result;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Interpolator$Result;
    .locals 1

    .line 111
    sget-object v0, Landroid/graphics/Interpolator$Result;->$VALUES:[Landroid/graphics/Interpolator$Result;

    invoke-virtual {v0}, [Landroid/graphics/Interpolator$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Interpolator$Result;

    return-object v0
.end method
