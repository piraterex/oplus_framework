.class public final enum Landroid/graphics/Path$Op;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Path$Op;

.field public static final enum whitelist DIFFERENCE:Landroid/graphics/Path$Op;

.field public static final enum whitelist INTERSECT:Landroid/graphics/Path$Op;

.field public static final enum whitelist REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

.field public static final enum whitelist UNION:Landroid/graphics/Path$Op;

.field public static final enum whitelist XOR:Landroid/graphics/Path$Op;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 161
    new-instance v0, Landroid/graphics/Path$Op;

    const-string v1, "DIFFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 165
    new-instance v1, Landroid/graphics/Path$Op;

    const-string v3, "INTERSECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 169
    new-instance v3, Landroid/graphics/Path$Op;

    const-string v5, "UNION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 173
    new-instance v5, Landroid/graphics/Path$Op;

    const-string v7, "XOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    .line 177
    new-instance v7, Landroid/graphics/Path$Op;

    const-string v9, "REVERSE_DIFFERENCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    .line 157
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/graphics/Path$Op;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/graphics/Path$Op;->$VALUES:[Landroid/graphics/Path$Op;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Path$Op;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 157
    const-class v0, Landroid/graphics/Path$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$Op;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Path$Op;
    .locals 1

    .line 157
    sget-object v0, Landroid/graphics/Path$Op;->$VALUES:[Landroid/graphics/Path$Op;

    invoke-virtual {v0}, [Landroid/graphics/Path$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$Op;

    return-object v0
.end method
