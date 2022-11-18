.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private greylist-max-o mAdapter:Landroid/nfc/NfcAdapter;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-p <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Landroid/nfc/NfcManager;->init()V

    .line 79
    return-void
.end method

.method private blacklist init()V
    .locals 2

    .line 85
    iget-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_0

    .line 91
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 94
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 95
    return-void

    .line 86
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Landroid/nfc/NfcManager;->init()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 125
    :goto_0
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
