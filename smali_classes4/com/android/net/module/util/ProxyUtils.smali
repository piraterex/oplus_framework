.class public final Lcom/android/net/module/util/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# static fields
.field private static final blacklist EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final blacklist EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field private static final blacklist HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final blacklist NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final blacklist PROXY_EXCLLIST_INVALID:I = 0x5

.field public static final blacklist PROXY_HOSTNAME_EMPTY:I = 0x1

.field public static final blacklist PROXY_HOSTNAME_INVALID:I = 0x2

.field public static final blacklist PROXY_PORT_EMPTY:I = 0x3

.field public static final blacklist PROXY_PORT_INVALID:I = 0x4

.field public static final blacklist PROXY_VALID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/ProxyUtils;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/ProxyUtils;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "exclusionList"    # [Ljava/lang/String;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const-string v0, ""

    return-object v0

    .line 70
    :cond_0
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "exclusionList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    if-nez p0, :cond_0

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/net/module/util/ProxyUtils;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 78
    .local v0, "match":Ljava/util/regex/Matcher;
    sget-object v1, Lcom/android/net/module/util/ProxyUtils;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 80
    .local v1, "listMatch":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    return v2

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    return v2

    .line 84
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    return v2

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    return v2

    .line 88
    :cond_3
    const/4 v2, -0x1

    .line 90
    .local v2, "portVal":I
    const/4 v3, 0x4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 93
    nop

    .line 94
    if-lez v2, :cond_4

    const v4, 0xffff

    if-le v2, v4, :cond_5

    :cond_4
    return v3

    .line 91
    :catch_0
    move-exception v4

    .line 92
    .local v4, "ex":Ljava/lang/NumberFormatException;
    return v3

    .line 96
    .end local v2    # "portVal":I
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v2, 0x0

    return v2
.end method
