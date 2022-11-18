.class public final enum Landroid/webkit/WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum whitelist NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public static final enum whitelist SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 62
    new-instance v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 66
    new-instance v1, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v3, "SINGLE_COLUMN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 71
    new-instance v3, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v5, "NARROW_COLUMNS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 73
    new-instance v5, Landroid/webkit/WebSettings$LayoutAlgorithm;

    const-string v7, "TEXT_AUTOSIZING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/webkit/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 61
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .line 61
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$LayoutAlgorithm;

    return-object v0
.end method
