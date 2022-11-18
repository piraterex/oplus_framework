.class public final enum Landroid/audio/policy/configuration/V7_0/Role;
.super Ljava/lang/Enum;
.source "Role.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/Role;

.field public static final enum blacklist sink:Landroid/audio/policy/configuration/V7_0/Role;

.field public static final enum blacklist source:Landroid/audio/policy/configuration/V7_0/Role;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Role;

    const-string/jumbo v1, "sink"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/Role;->sink:Landroid/audio/policy/configuration/V7_0/Role;

    .line 5
    new-instance v1, Landroid/audio/policy/configuration/V7_0/Role;

    const-string/jumbo v3, "source"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/Role;->source:Landroid/audio/policy/configuration/V7_0/Role;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/audio/policy/configuration/V7_0/Role;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/audio/policy/configuration/V7_0/Role;->$VALUES:[Landroid/audio/policy/configuration/V7_0/Role;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/Role;->rawName:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;
    .locals 5
    .param p0, "rawString"    # Ljava/lang/String;

    .line 18
    invoke-static {}, Landroid/audio/policy/configuration/V7_0/Role;->values()[Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    .local v3, "_f":Landroid/audio/policy/configuration/V7_0/Role;
    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/Role;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    return-object v3

    .line 18
    .end local v3    # "_f":Landroid/audio/policy/configuration/V7_0/Role;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Landroid/audio/policy/configuration/V7_0/Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/Role;
    .locals 1

    .line 3
    sget-object v0, Landroid/audio/policy/configuration/V7_0/Role;->$VALUES:[Landroid/audio/policy/configuration/V7_0/Role;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Role;->rawName:Ljava/lang/String;

    return-object v0
.end method
