.class public final enum Landroid/text/TextUtils$TruncateAt;
.super Ljava/lang/Enum;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TruncateAt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/text/TextUtils$TruncateAt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist END:Landroid/text/TextUtils$TruncateAt;

.field public static final enum greylist END_SMALL:Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist MARQUEE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist MIDDLE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist START:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 1301
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 1302
    new-instance v1, Landroid/text/TextUtils$TruncateAt;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 1303
    new-instance v3, Landroid/text/TextUtils$TruncateAt;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1304
    new-instance v5, Landroid/text/TextUtils$TruncateAt;

    const-string v7, "MARQUEE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 1308
    new-instance v7, Landroid/text/TextUtils$TruncateAt;

    const-string v9, "END_SMALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 1300
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/text/TextUtils$TruncateAt;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1300
    const-class v0, Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public static whitelist values()[Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1300
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, [Landroid/text/TextUtils$TruncateAt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method
