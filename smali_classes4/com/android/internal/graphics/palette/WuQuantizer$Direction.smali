.class final enum Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
.super Ljava/lang/Enum;
.source "WuQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/graphics/palette/WuQuantizer$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

.field public static final enum blacklist BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

.field public static final enum blacklist GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

.field public static final enum blacklist RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 425
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    const-string v1, "RED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .line 426
    new-instance v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    const-string v3, "GREEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .line 427
    new-instance v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    const-string v5, "BLUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .line 424
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->$VALUES:[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 424
    const-class v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .locals 1

    .line 424
    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->$VALUES:[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-virtual {v0}, [Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    return-object v0
.end method
