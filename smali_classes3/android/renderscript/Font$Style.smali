.class public final enum Landroid/renderscript/Font$Style;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Font$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Font$Style;

.field public static final enum greylist-max-o BOLD:Landroid/renderscript/Font$Style;

.field public static final enum greylist-max-o BOLD_ITALIC:Landroid/renderscript/Font$Style;

.field public static final enum greylist ITALIC:Landroid/renderscript/Font$Style;

.field public static final enum greylist-max-o NORMAL:Landroid/renderscript/Font$Style;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 82
    new-instance v0, Landroid/renderscript/Font$Style;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    .line 86
    new-instance v1, Landroid/renderscript/Font$Style;

    const-string v3, "BOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    .line 90
    new-instance v3, Landroid/renderscript/Font$Style;

    const-string v5, "ITALIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    .line 95
    new-instance v5, Landroid/renderscript/Font$Style;

    const-string v7, "BOLD_ITALIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    .line 78
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/renderscript/Font$Style;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/renderscript/Font$Style;->$VALUES:[Landroid/renderscript/Font$Style;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/Font$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Landroid/renderscript/Font$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$Style;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/Font$Style;
    .locals 1

    .line 78
    sget-object v0, Landroid/renderscript/Font$Style;->$VALUES:[Landroid/renderscript/Font$Style;

    invoke-virtual {v0}, [Landroid/renderscript/Font$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Font$Style;

    return-object v0
.end method
