.class public final enum Landroid/webkit/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/webkit/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum whitelist HIGH:Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum whitelist LOW:Landroid/webkit/WebSettings$RenderPriority;

.field public static final enum whitelist NORMAL:Landroid/webkit/WebSettings$RenderPriority;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 191
    new-instance v0, Landroid/webkit/WebSettings$RenderPriority;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    .line 192
    new-instance v1, Landroid/webkit/WebSettings$RenderPriority;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 193
    new-instance v3, Landroid/webkit/WebSettings$RenderPriority;

    const-string v5, "LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    .line 190
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/webkit/WebSettings$RenderPriority;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/webkit/WebSettings$RenderPriority;->$VALUES:[Landroid/webkit/WebSettings$RenderPriority;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 190
    const-class v0, Landroid/webkit/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method public static whitelist values()[Landroid/webkit/WebSettings$RenderPriority;
    .locals 1

    .line 190
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->$VALUES:[Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0}, [Landroid/webkit/WebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method
