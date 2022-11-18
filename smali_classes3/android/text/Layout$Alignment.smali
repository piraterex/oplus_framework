.class public final enum Landroid/text/Layout$Alignment;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/text/Layout$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/text/Layout$Alignment;

.field public static final enum whitelist ALIGN_CENTER:Landroid/text/Layout$Alignment;

.field public static final enum greylist ALIGN_LEFT:Landroid/text/Layout$Alignment;

.field public static final enum whitelist ALIGN_NORMAL:Landroid/text/Layout$Alignment;

.field public static final enum whitelist ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

.field public static final enum greylist ALIGN_RIGHT:Landroid/text/Layout$Alignment;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 2620
    new-instance v0, Landroid/text/Layout$Alignment;

    const-string v1, "ALIGN_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2621
    new-instance v1, Landroid/text/Layout$Alignment;

    const-string v3, "ALIGN_OPPOSITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 2622
    new-instance v3, Landroid/text/Layout$Alignment;

    const-string v5, "ALIGN_CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2624
    new-instance v5, Landroid/text/Layout$Alignment;

    const-string v7, "ALIGN_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 2627
    new-instance v7, Landroid/text/Layout$Alignment;

    const-string v9, "ALIGN_RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2619
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/text/Layout$Alignment;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2619
    const-class v0, Landroid/text/Layout$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public static whitelist values()[Landroid/text/Layout$Alignment;
    .locals 1

    .line 2619
    sget-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, [Landroid/text/Layout$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Alignment;

    return-object v0
.end method
