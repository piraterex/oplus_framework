.class public final enum Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
.super Ljava/lang/Enum;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field public static final enum blacklist OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field public static final enum blacklist ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 87
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    const-string v1, "OVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 88
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    const-string v3, "ROUNDED_RECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 86
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->$VALUES:[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    return-object v0
.end method

.method public static blacklist values()[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    .locals 1

    .line 86
    sget-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->$VALUES:[Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    invoke-virtual {v0}, [Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    return-object v0
.end method
