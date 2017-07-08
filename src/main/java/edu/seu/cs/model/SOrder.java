package edu.seu.cs.model;

import java.util.Date;

public class SOrder {
	private int sOrderId;
	private String code;
	private Date billDate;
	private int clientId;
	private int billTypeId;
	private double tarRate;
	private double disc;
	private	int exemanId;
	private double amount;
	private int shopId;
	private String shipTo;
	private Date takeDate;
	private int opId;
	private boolean closed;
	private boolean finished;
	private int rptId;
	private int templateId;
	private int referCount;		
	private String phone;		//联系电话
	private String contator;	//联系人
	private boolean sendEmail;	//发送邮件标志
	private int printCount;		//打印次数
	private boolean dsOrder;	//是否分销
	private boolean uploaded;	//客户订单是否已上传
	private int billStatus;		//单据状态 0-待审核 1-接受 2-拒绝
	private boolean ackAppr;		//审核确认
	private int fileCount;
	public int getSOrderId() {
		return sOrderId;
	}
	public void setSOrderId(int sOrderId) {
		this.sOrderId = sOrderId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Date getBillDate() {
		return billDate;
	}
	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}
	public int getClientId() {
		return clientId;
	}
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	public int getBillTypeId() {
		return billTypeId;
	}
	public void setBillTypeId(int billTypeId) {
		this.billTypeId = billTypeId;
	}
	public double getTarRate() {
		return tarRate;
	}
	public void setTarRate(double tarRate) {
		this.tarRate = tarRate;
	}
	public double getDisc() {
		return disc;
	}
	public void setDisc(double disc) {
		this.disc = disc;
	}
	public int getExemanId() {
		return exemanId;
	}
	public void setExemanId(int exemanId) {
		this.exemanId = exemanId;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getShipTo() {
		return shipTo;
	}
	public void setShipTo(String shipTo) {
		this.shipTo = shipTo;
	}
	public Date getTakeDate() {
		return takeDate;
	}
	public void setTakeDate(Date takeDate) {
		this.takeDate = takeDate;
	}
	public int getOpId() {
		return opId;
	}
	public void setOpId(int opId) {
		this.opId = opId;
	}
	public boolean isClosed() {
		return closed;
	}
	public void setClosed(boolean closed) {
		this.closed = closed;
	}
	public boolean isFinished() {
		return finished;
	}
	public void setFinished(boolean finished) {
		this.finished = finished;
	}
	public int getRptId() {
		return rptId;
	}
	public void setRptId(int rptId) {
		this.rptId = rptId;
	}
	public int getTemplateId() {
		return templateId;
	}
	public void setTemplateId(int templateId) {
		this.templateId = templateId;
	}
	public int getReferCount() {
		return referCount;
	}
	public void setReferCount(int referCount) {
		this.referCount = referCount;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getContator() {
		return contator;
	}
	public void setContator(String contator) {
		this.contator = contator;
	}
	public boolean isSendEmail() {
		return sendEmail;
	}
	public void setSendEmail(boolean sendEmail) {
		this.sendEmail = sendEmail;
	}
	public int getPrintCount() {
		return printCount;
	}
	public void setPrintCount(int printCount) {
		this.printCount = printCount;
	}
	public boolean isDsOrder() {
		return dsOrder;
	}
	public void setDsOrder(boolean dsOrder) {
		this.dsOrder = dsOrder;
	}
	public boolean isUploaded() {
		return uploaded;
	}
	public void setUploaded(boolean uploaded) {
		this.uploaded = uploaded;
	}
	public int getBillStatus() {
		return billStatus;
	}
	public void setBillStatus(int billStatus) {
		this.billStatus = billStatus;
	}
	public boolean isAckAppr() {
		return ackAppr;
	}
	public void setAckAppr(boolean ackAppr) {
		this.ackAppr = ackAppr;
	}
	public int getFileCount() {
		return fileCount;
	}
	public void setFileCount(int fileCount) {
		this.fileCount = fileCount;
	}
}
