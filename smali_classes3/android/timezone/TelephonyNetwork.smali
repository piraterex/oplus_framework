.class public final Landroid/timezone/TelephonyNetwork;
.super Ljava/lang/Object;
.source "TelephonyNetwork.java"


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetwork;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/i18n/timezone/TelephonyNetwork;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyNetwork;

    iput-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    if-ne p0, p1, :cond_0

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/timezone/TelephonyNetwork;

    .line 71
    .local v0, "that":Landroid/timezone/TelephonyNetwork;
    iget-object v1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    iget-object v2, v0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/TelephonyNetwork;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 68
    .end local v0    # "that":Landroid/timezone/TelephonyNetwork;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCountryIsoCode()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TelephonyNetwork;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TelephonyNetwork;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TelephonyNetwork;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetwork{mDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/timezone/TelephonyNetwork;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetwork;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
