.class public Lcom/android/net/module/util/ConnectivitySettingsUtils;
.super Ljava/lang/Object;
.source "ConnectivitySettingsUtils.java"


# static fields
.field public static final blacklist PRIVATE_DNS_DEFAULT_MODE:Ljava/lang/String; = "private_dns_default_mode"

.field public static final blacklist PRIVATE_DNS_MODE:Ljava/lang/String; = "private_dns_mode"

.field public static final blacklist PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final blacklist PRIVATE_DNS_MODE_OFF_STRING:Ljava/lang/String; = "off"

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final blacklist PRIVATE_DNS_MODE_OPPORTUNISTIC_STRING:Ljava/lang/String; = "opportunistic"

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final blacklist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME_STRING:Ljava/lang/String; = "hostname"

.field public static final blacklist PRIVATE_DNS_SPECIFIER:Ljava/lang/String; = "private_dns_specifier"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "private_dns_specifier"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPrivateDnsMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "private_dns_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "private_dns_default_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    return v2

    .line 88
    :cond_1
    invoke-static {v1}, Lcom/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static blacklist getPrivateDnsModeAsInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "mode"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "hostname"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "opportunistic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid private dns mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    return v1

    .line 67
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 65
    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2023fbf7 -> :sswitch_2
        -0x11dea3cd -> :sswitch_1
        0x1ad6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getPrivateDnsModeAsString(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid private dns mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_0
    const-string v0, "hostname"

    return-object v0

    .line 54
    :pswitch_1
    const-string/jumbo v0, "opportunistic"

    return-object v0

    .line 52
    :pswitch_2
    const-string/jumbo v0, "off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specifier"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "private_dns_specifier"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    return-void
.end method

.method public static blacklist setPrivateDnsMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 98
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid private dns mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    invoke-static {p1}, Lcom/android/net/module/util/ConnectivitySettingsUtils;->getPrivateDnsModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string/jumbo v2, "private_dns_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    return-void
.end method
