.class public final enum Landroid/sysprop/CryptoProperties$state_values;
.super Ljava/lang/Enum;
.source "CryptoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/CryptoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "state_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/CryptoProperties$state_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum blacklist ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum blacklist UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum blacklist UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 185
    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const-string v1, "ENCRYPTED"

    const/4 v2, 0x0

    const-string v3, "encrypted"

    invoke-direct {v0, v1, v2, v3}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    .line 186
    new-instance v1, Landroid/sysprop/CryptoProperties$state_values;

    const-string v3, "UNENCRYPTED"

    const/4 v4, 0x1

    const-string/jumbo v5, "unencrypted"

    invoke-direct {v1, v3, v4, v5}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/sysprop/CryptoProperties$state_values;->UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    .line 187
    new-instance v3, Landroid/sysprop/CryptoProperties$state_values;

    const-string v5, "UNSUPPORTED"

    const/4 v6, 0x2

    const-string/jumbo v7, "unsupported"

    invoke-direct {v3, v5, v6, v7}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    .line 184
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/sysprop/CryptoProperties$state_values;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    iput-object p3, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/sysprop/CryptoProperties$state_values;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 184
    const-class v0, Landroid/sysprop/CryptoProperties$state_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method

.method public static blacklist values()[Landroid/sysprop/CryptoProperties$state_values;
    .locals 1

    .line 184
    sget-object v0, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    invoke-virtual {v0}, [Landroid/sysprop/CryptoProperties$state_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
