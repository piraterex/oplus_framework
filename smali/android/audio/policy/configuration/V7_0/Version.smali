.class public final enum Landroid/audio/policy/configuration/V7_0/Version;
.super Ljava/lang/Enum;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/Version;

.field public static final enum blacklist _7_0:Landroid/audio/policy/configuration/V7_0/Version;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Version;

    const-string v1, "_7_0"

    const/4 v2, 0x0

    const-string v3, "7.0"

    invoke-direct {v0, v1, v2, v3}, Landroid/audio/policy/configuration/V7_0/Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/Version;->_7_0:Landroid/audio/policy/configuration/V7_0/Version;

    .line 3
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/audio/policy/configuration/V7_0/Version;

    aput-object v0, v1, v2

    sput-object v1, Landroid/audio/policy/configuration/V7_0/Version;->$VALUES:[Landroid/audio/policy/configuration/V7_0/Version;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/Version;->rawName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Version;
    .locals 5
    .param p0, "rawString"    # Ljava/lang/String;

    .line 17
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/Version;->values()[Landroid/audio/policy/configuration/V7_0/Version;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 18
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/Version;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/Version;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    return-object v3

    .line 17
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/Version;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Version;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Landroid/audio/policy/configuration/V7_0/Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/Version;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/Version;
    .locals 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/Version;->$VALUES:[Landroid/audio/policy/configuration/V7_0/Version;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/Version;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Version;->rawName:Ljava/lang/String;

    return-object v0
.end method
